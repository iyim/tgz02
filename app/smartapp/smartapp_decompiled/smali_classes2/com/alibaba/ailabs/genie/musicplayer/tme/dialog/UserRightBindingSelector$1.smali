.class Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$1;
.super Ljava/lang/Object;
.source "UserRightBindingSelector.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->onCreateView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setSelected(Z)V

    :cond_0
    return-void
.end method
