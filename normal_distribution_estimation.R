

mu = 50
sd = 10
x = rnorm(5, mu, sd)
print(x)
ggplot(data.fram(x=x))+geom_histogram(aes(x=x),color="white")

n = length(x)
estimate_of_mean = mean(x)
print(estimate_of_mean)
estimate_of_sd = sd(x) #sqrt(sum((x[i]-mean(x))^2)/(n-1))

sd_of_estimate_of_mean = estimate_of_sd/sqrt(n)

vals = seq(10,80)
true_density = dnorm(vals, mu, sd)
estimate_of_dist = dnorm(vals, estimate_of_mean, estimate_of_sd)
estimate_of_mean_dist = dnorm(vals, estimate_of_mean, sd_of_estimate_of_mean)


data = data.frame(x=vals, y=true_density, dist="true distribution")
data = rbind(data, data.frame(x=vals, y=estimate_of_dist, dist="estimated distribution"))
data = rbind(data, data.frame(x=vals, y=estimate_of_mean_dist, dist="estimate of the mean"))
ggplot(data)+geom_line(aes(x=x,y=y,color=dist))

