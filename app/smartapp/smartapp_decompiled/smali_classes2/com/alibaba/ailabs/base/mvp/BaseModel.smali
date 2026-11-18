.class public abstract Lcom/alibaba/ailabs/base/mvp/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isCorrect(Lcom/alibaba/ailabs/base/mvp/BaseModel;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/mvp/BaseModel;->isCorrect()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/alibaba/ailabs/base/mvp/BaseModel;->id:J

    return-wide v0
.end method

.method protected abstract isCorrect()Z
.end method

.method public setId(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/alibaba/ailabs/base/mvp/BaseModel;->id:J

    return-void
.end method
