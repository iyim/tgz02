.class public Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;
.super Ljava/lang/Object;
.source "StatusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/status/StatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiStatusData"
.end annotation


# instance fields
.field ip:Ljava/lang/String;

.field macAddress:Ljava/lang/String;

.field name:Ljava/lang/String;

.field quantity:I

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isSame(Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 36
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->status:I

    iget v2, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->status:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->quantity:I

    iget v2, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->quantity:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    .line 38
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->macAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->macAddress:Ljava/lang/String;

    .line 39
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->ip:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->ip:Ljava/lang/String;

    .line 40
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiStatusData{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", quantity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->quantity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", macAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
