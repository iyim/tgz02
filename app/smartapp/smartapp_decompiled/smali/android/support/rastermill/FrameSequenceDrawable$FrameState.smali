.class public final Landroid/support/rastermill/FrameSequenceDrawable$FrameState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FrameSequenceDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameState"
.end annotation


# instance fields
.field bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field frame:Landroid/support/rastermill/FrameSequence;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 0

    .line 770
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 771
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$FrameState;->frame:Landroid/support/rastermill/FrameSequence;

    .line 772
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable$FrameState;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 780
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$FrameState;->frame:Landroid/support/rastermill/FrameSequence;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable$FrameState;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {v0, v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 776
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable$FrameState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
