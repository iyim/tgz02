.class interface abstract Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;
.super Ljava/lang/Object;
.source "PinnedHeaderFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PinnedHeaderAdapterInternal"
.end annotation


# static fields
.field public static final PINNED_HEADER_GONE:I = 0x0

.field public static final PINNED_HEADER_PUSHED_UP:I = 0x2

.field public static final PINNED_HEADER_VISIBLE:I = 0x1


# virtual methods
.method public abstract configurePinnedHeader(Landroid/view/View;II)V
.end method

.method public abstract getPinnedHeaderState(I)I
.end method
