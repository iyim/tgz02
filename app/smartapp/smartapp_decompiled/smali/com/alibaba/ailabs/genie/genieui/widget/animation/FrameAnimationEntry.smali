.class public Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;
.super Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;
.source "FrameAnimationEntry.java"


# instance fields
.field private fps:I

.field private path:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFps()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->fps:I

    return v0
.end method

.method public getPath()[Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->path:[Ljava/lang/String;

    return-object v0
.end method

.method public setFps(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->fps:I

    return-void
.end method

.method public setPath([Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->path:[Ljava/lang/String;

    return-void
.end method
