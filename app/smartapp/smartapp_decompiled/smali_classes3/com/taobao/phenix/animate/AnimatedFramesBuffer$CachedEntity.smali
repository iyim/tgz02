.class public Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;
.super Ljava/lang/Object;
.source "AnimatedFramesBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/animate/AnimatedFramesBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedEntity"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private references:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->references:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->references:I

    return p0
.end method

.method static synthetic access$008(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->references:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->references:I

    return v0
.end method

.method static synthetic access$010(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->references:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->references:I

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/taobao/phenix/animate/AnimatedFramesBuffer$CachedEntity;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
