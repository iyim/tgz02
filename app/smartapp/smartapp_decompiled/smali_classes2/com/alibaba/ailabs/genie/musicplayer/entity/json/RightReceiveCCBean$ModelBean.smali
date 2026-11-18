.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;
.super Ljava/lang/Object;
.source "RightReceiveCCBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private receiveStatus:I

.field private receiveSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getReceiveStatus()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->receiveStatus:I

    return v0
.end method

.method public isReceiveSuccess()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->receiveSuccess:Z

    return v0
.end method

.method public setReceiveStatus(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->receiveStatus:I

    return-void
.end method

.method public setReceiveSuccess(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->receiveSuccess:Z

    return-void
.end method
