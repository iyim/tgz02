.class Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;
.super Ljava/lang/Object;
.source "ExitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/ExitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->access$000(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const-string v1, "ExitView"

    if-eqz v0, :cond_0

    const-string v0, "You click back"

    .line 57
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->access$000(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->access$100(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->access$200(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->access$300(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "ExitView onClick no handle"

    .line 61
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
