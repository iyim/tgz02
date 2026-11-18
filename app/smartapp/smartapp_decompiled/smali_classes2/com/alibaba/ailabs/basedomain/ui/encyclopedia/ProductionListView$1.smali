.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;
.super Ljava/lang/Object;
.source "ProductionListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProductionListView onClick index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$400(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$500(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
