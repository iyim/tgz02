.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$1;
.super Ljava/lang/Object;
.source "EntertainmentPersonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
