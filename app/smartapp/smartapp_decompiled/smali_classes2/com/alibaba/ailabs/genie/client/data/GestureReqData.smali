.class public Lcom/alibaba/ailabs/genie/client/data/GestureReqData;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "GestureReqData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mGestureId:I

.field private mText:Ljava/lang/String;

.field private openGesture:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mGestureId:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mGestureId:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mText:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mGestureId:I

    .line 35
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mGestureId:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mText:Ljava/lang/String;

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->openGesture:Z

    return-void
.end method


# virtual methods
.method public getGestureId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mGestureId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenGesture()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->openGesture:Z

    return v0
.end method

.method public setGestureId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mGestureId:I

    return-void
.end method

.method public setOpenGesture(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->openGesture:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;->mText:Ljava/lang/String;

    return-void
.end method
