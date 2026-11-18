.class public interface abstract Lcom/taobao/phenix/bitmap/BitmapProcessor;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/bitmap/BitmapProcessor$BitmapSupplier;
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract process(Ljava/lang/String;Lcom/taobao/phenix/bitmap/BitmapProcessor$BitmapSupplier;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/phenix/bitmap/BitmapProcessor$BitmapSupplier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
