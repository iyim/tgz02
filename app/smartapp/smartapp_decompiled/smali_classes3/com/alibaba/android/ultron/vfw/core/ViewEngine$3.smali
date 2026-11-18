.class Lcom/alibaba/android/ultron/vfw/core/ViewEngine$3;
.super Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;
.source "ViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->bindSticky(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Landroid/view/ViewGroup;Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$3;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;-><init>(Landroid/view/ViewGroup;Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;)V

    return-void
.end method


# virtual methods
.method protected getIDMComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$3;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$800(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/core/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getStickyTopList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
