.class final Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil$1;
.super Ljava/lang/Object;
.source "DesignUtil.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil;->checkCoordinatorLayout(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil$1;->val$listener:Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil$1;->val$listener:Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;->onCoordinatorUpdate(ZZ)V

    return-void
.end method
