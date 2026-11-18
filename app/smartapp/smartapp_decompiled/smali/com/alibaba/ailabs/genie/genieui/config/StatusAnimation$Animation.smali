.class public Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;
.super Ljava/lang/Object;
.source "StatusAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Animation"
.end annotation


# instance fields
.field private id:I

.field private loop:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->id:I

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->loop:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->id:I

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->loop:Z

    return-void
.end method
