.class public Lcom/taobao/phenix/bitmap/BitmapSupplier;
.super Ljava/lang/Object;
.source "BitmapSupplier.java"

# interfaces
.implements Lcom/taobao/phenix/bitmap/BitmapProcessor$BitmapSupplier;


# static fields
.field private static final sBitmapSupplier:Lcom/taobao/phenix/bitmap/BitmapSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/taobao/phenix/bitmap/BitmapSupplier;

    invoke-direct {v0}, Lcom/taobao/phenix/bitmap/BitmapSupplier;-><init>()V

    sput-object v0, Lcom/taobao/phenix/bitmap/BitmapSupplier;->sBitmapSupplier:Lcom/taobao/phenix/bitmap/BitmapSupplier;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/phenix/bitmap/BitmapSupplier;
    .locals 1

    .line 14
    sget-object v0, Lcom/taobao/phenix/bitmap/BitmapSupplier;->sBitmapSupplier:Lcom/taobao/phenix/bitmap/BitmapSupplier;

    return-object v0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isAshmemSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/taobao/pexode/common/AshmemBitmapFactory;->instance()Lcom/taobao/pexode/common/AshmemBitmapFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/pexode/common/AshmemBitmapFactory;->newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->bitmapPoolBuilder()Lcom/taobao/phenix/builder/BitmapPoolBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->build()Lcom/taobao/phenix/bitmap/BitmapPool;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/phenix/bitmap/BitmapPool;->getFromPool(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 29
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    return-object v0
.end method
