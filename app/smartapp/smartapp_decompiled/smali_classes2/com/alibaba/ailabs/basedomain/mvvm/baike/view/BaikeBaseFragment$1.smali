.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "BaikeBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->autoRollText(Landroid/widget/TextView;Landroid/widget/ScrollView;)V

    :goto_0
    return-void
.end method
