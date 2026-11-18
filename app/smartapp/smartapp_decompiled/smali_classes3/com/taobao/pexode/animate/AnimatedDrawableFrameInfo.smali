.class public Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;
.super Ljava/lang/Object;
.source "AnimatedDrawableFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;,
        Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    }
.end annotation


# instance fields
.field public final frameNumber:I

.field public final height:I

.field public final mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

.field public final mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

.field public final width:I

.field public final xOffset:I

.field public final yOffset:I


# direct methods
.method public constructor <init>(IIIIILcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->frameNumber:I

    .line 21
    iput p2, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->xOffset:I

    .line 22
    iput p3, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->yOffset:I

    .line 23
    iput p4, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->width:I

    .line 24
    iput p5, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->height:I

    .line 25
    iput-object p6, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    .line 26
    iput-object p7, p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    return-void
.end method
