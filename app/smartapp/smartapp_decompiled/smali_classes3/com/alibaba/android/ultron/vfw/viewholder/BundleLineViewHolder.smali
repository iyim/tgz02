.class public Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;
.super Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;
.source "BundleLineViewHolder.java"


# static fields
.field public static final CREATOR:Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder$1;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;->CREATOR:Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onBindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0
    .param p1    # Lcom/taobao/android/ultron/common/model/IDMComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/android/ultron/vfw/R$layout;->bundle_line_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
