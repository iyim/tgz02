.class Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$1;
.super Ljava/lang/Object;
.source "TimeDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$1;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$1;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->finish()V

    return-void
.end method
