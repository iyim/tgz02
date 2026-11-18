.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;
.super Ljava/lang/Object;
.source "BaikeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;->open(Landroid/content/Context;)V

    return-void
.end method
