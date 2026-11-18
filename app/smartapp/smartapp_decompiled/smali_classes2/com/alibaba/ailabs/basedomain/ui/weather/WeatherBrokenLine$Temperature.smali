.class Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;
.super Ljava/lang/Object;
.source "WeatherBrokenLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Temperature"
.end annotation


# instance fields
.field public day:Ljava/lang/String;

.field public dayName:Ljava/lang/String;

.field public high:I

.field public low:I

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;

.field public x:F

.field public yHigh:F

.field public yLow:F


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    .line 223
    iput p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    .line 224
    iput-object p4, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->dayName:Ljava/lang/String;

    .line 225
    iput-object p5, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->day:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temperature{high="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->dayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", day=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->day:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", yHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
