.class Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment$1;
.super Ljava/lang/Object;
.source "AqiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
