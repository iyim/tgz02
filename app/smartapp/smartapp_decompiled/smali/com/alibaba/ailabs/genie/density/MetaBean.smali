.class public Lcom/alibaba/ailabs/genie/density/MetaBean;
.super Ljava/lang/Object;
.source "MetaBean.java"


# instance fields
.field private activityName:Ljava/lang/String;

.field private autoSize:I

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 9
    iput v0, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->autoSize:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->orientation:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->activityName:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->autoSize:I

    .line 16
    iput p3, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->orientation:I

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoSize()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->autoSize:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->orientation:I

    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setAutoSize(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->autoSize:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/alibaba/ailabs/genie/density/MetaBean;->orientation:I

    return-void
.end method
