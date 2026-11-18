.class Lcom/alibaba/ailabs/genie/contacts/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/MainActivity;->initGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 347
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
