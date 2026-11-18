.class public Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;
.super Ljava/lang/Object;
.source "VisionInfo.java"


# static fields
.field public static final SCENE_MODE_DEFAULT:I = 0x0

.field public static final SCENE_MODE_MONITOR:I = 0x1

.field public static final SCENE_MODE_VOIP:I = 0x2


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private height:I

.field private isCenter:Z

.field private mode:I

.field private surface:Landroid/view/Surface;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->mode:I

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->height:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->mode:I

    return v0
.end method

.method public getModeKey()Ljava/lang/String;
    .locals 2

    .line 92
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MonitorSense"

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "VoipSense"

    return-object v0

    :cond_1
    const-string v0, "DefaultSense"

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->width:I

    return v0
.end method

.method public isCenter()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->isCenter:Z

    return v0
.end method

.method public setCenter(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->isCenter:Z

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->height:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->mode:I

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->surface:Landroid/view/Surface;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisionInfo{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->isCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
