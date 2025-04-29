# Parameter
mean_sample <- 83
sd_pop <- 10
n <- 60
z_score <- 1.96

# Hitung Standard Error dan Confidence Interval
SE <- sd_pop / sqrt(n)
ME <- z_score * SE

lower_bound <- mean_sample - ME
upper_bound <- mean_sample + ME

# Tampilkan hasil Confidence Interval
cat("Confidence Interval 95%: (", round(lower_bound, 2), ",", round(upper_bound, 2), ")\n")

# Evaluasi klaim perusahaan 
if (80 >= lower_bound & 80 <= upper_bound) {
  cat("✅ Klaim skor kepuasan minimal 80 DIDUKUNG oleh data.\n")
} else {
  cat("❌ Klaim skor kepuasan minimal 80 TIDAK DIDUKUNG oleh data.\n")
}

# Visualisasi distribusi normal dan Confidence Interval
x <- seq(75, 90, length=200)
y <- dnorm(x, mean=mean_sample, sd=SE)
plot(x, y, type="l", lwd=2, col="blue",
     xlab="Skor Kepuasan Pelanggan", ylab="Kepadatan",
     main="Confidence Interval 95% untuk Rata-rata Skor Kepuasan Pelanggan")

abline(v=mean_sample, col="blue", lty=2)   # Rata-rata sampel
abline(v=lower_bound, col="green", lty=3)  # Batas bawah CI
abline(v=upper_bound, col="green", lty=3)  # Batas atas CI
abline(v=80, col="red", lty=2)            # Klaim perusahaan

legend("topright", legend=c("Rata-rata sampel", "Batas CI", "Klaim 80"),
       col=c("blue","green","red"), lty=c(2,3,2), lwd=c(2,1,2))
