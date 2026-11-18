.class public Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;
.super Ljava/lang/Object;
.source "AnimationEntry.java"


# instance fields
.field public loop:Z


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
.method public isLoop()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;->loop:Z

    return v0
.end method

.method public setLoop(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;->loop:Z

    return-void
.end method
