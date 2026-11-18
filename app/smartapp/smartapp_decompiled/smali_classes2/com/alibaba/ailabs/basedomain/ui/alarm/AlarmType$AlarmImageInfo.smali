.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;
.super Ljava/lang/Object;
.source "AlarmType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmImageInfo"
.end annotation


# instance fields
.field alarmTypeId:I

.field resBgId:I

.field weatherCode:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->resBgId:I

    .line 127
    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->alarmTypeId:I

    .line 128
    iput p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->weatherCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmImageInfo{, resBgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->resBgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alarmTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->alarmTypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weatherCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->weatherCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
