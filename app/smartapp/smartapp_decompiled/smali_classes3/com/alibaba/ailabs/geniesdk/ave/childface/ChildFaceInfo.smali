.class public Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;
.super Ljava/lang/Object;
.source "ChildFaceInfo.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private isChildFace:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public isChildFace()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->isChildFace:Z

    return v0
.end method

.method public setChildFace(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->isChildFace:Z

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->surface:Landroid/view/Surface;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildFaceInfo{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChildFace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->isChildFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
