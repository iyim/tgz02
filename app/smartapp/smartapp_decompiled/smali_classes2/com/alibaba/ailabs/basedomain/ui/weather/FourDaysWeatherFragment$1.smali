.class Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment$1;
.super Ljava/lang/Object;
.source "FourDaysWeatherFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
