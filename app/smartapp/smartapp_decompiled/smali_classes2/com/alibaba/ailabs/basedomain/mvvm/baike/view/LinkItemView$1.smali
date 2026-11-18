.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView$1;
.super Ljava/lang/Object;
.source "LinkItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;->onClick(Landroid/content/Context;)V

    return-void
.end method
