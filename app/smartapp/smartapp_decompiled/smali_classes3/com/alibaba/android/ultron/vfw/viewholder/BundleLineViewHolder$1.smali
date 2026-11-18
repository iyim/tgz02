.class final Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder$1;
.super Ljava/lang/Object;
.source "BundleLineViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public create(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;
    .locals 1

    .line 36
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    return-object v0
.end method
