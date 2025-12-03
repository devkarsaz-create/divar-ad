
package main

import (
	"net/http"
	"os"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

// Ad represents the data for a single advertisement.
type Ad struct {
	ID        int    `json:"id"`
	Title     string `json:"title"`
	Price     string `json:"price"`
	Location  string `json:"location"`
	Time      string `json:"time"`
	Image     string `json:"image"`
	IsSpecial bool   `json:"isSpecial"`
}

// A slice of sample ads to mimic a database.
var sampleAds = []Ad{
	{ID: 1, Title: "گوشی آیفون ۱۳ پرو (از سرور Go)", Price: "۳۵,۰۰۰,۰۰۰", Location: "تهران، زعفرانیه", Time: "لحظاتی پیش", Image: "https://images.unsplash.com/photo-1510557880182-3d4d3cba35a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80", IsSpecial: true},
	{ID: 2, Title: "لپتاپ مک‌بوک ایر M2", Price: "۴۵,۰۰۰,۰۰۰", Location: "کرج، عظیمیه", Time: "۵ دقیقه پیش", Image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80", IsSpecial: false},
	{ID: 3, Title: "دوربین سونی Alpha 7", Price: "۶۰,۰۰۰,۰۰۰", Location: "اصفهان، مرداویج", Time: "۱ ساعت پیش", Image: "https://images.unsplash.com/photo-1512790182537-535e67cca7a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80", IsSpecial: true},
	{ID: 4, Title: "ست مبلمان چستر", Price: "۱۲,۰۰۰,۰۰۰", Location: "شیراز، معالی‌آباد", Time: "۳ ساعت پیش", Image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80", IsSpecial: false},
	{ID: 5, Title: "هدفون بی‌سیم Bose 700", Price: "۸,۵۰۰,۰۰۰", Location: "مشهد، وکیل‌آباد", Time: "دیروز", Image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80", IsSpecial: false},
}

func main() {
	r := gin.Default()

	// پیکربندی داینامیک CORS
	config := cors.DefaultConfig()
	// به جای یک آدرس ثابت، همه آدرس‌ها را مجاز می‌دانیم، اما در محیط پروداکشن باید این را محدود کرد.
	config.AllowAllOrigins = true 
	config.AllowMethods = []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"}
	config.AllowHeaders = []string{"Origin", "Content-Length", "Content-Type"}
	r.Use(cors.New(config))


	// API v1 route group
	v1 := r.Group("/api/v1")
	{
		// Endpoint to get all ads
		v1.GET("/ads", func(c *gin.Context) {
			c.JSON(http.StatusOK, sampleAds)
		})

		// Ping endpoint for health check
		v1.GET("/ping", func(c *gin.Context) {
			c.JSON(http.StatusOK, gin.H{"message": "pong"})
		})
	}

	// پورت سرور را از متغیر محیطی PORT می‌خواند. این برای سازگاری با IDX لازم است.
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080" // پورت پیش‌فرض اگر متغیر محیطی تنظیم نشده باشد
	}

	// Start server
	r.Run(":" + port)
}
