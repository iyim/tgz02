.class public Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;
.super Ljava/lang/Object;
.source "AnimationBean.java"


# instance fields
.field private count:I

.field private fps:I

.field private id:I

.field private path:Ljava/lang/String;

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->count:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->fps:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->count:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->fps:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->id:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->type:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->version:Ljava/lang/String;

    return-void
.end method
