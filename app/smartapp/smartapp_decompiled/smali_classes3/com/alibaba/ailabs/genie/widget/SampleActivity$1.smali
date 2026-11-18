.class Lcom/alibaba/ailabs/genie/widget/SampleActivity$1;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/SampleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/SampleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/SampleActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/SampleActivity$1;->this$0:Lcom/alibaba/ailabs/genie/widget/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/SampleActivity$1;->this$0:Lcom/alibaba/ailabs/genie/widget/SampleActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/SampleActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onHome()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
