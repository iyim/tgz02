.class public Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;
.super Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;
.source "LottieAnimationEntry.java"


# instance fields
.field private filePath:Ljava/lang/String;


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
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;->filePath:Ljava/lang/String;

    return-void
.end method
