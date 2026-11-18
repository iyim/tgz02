.class Lcom/alibaba/genie/shopping/ShoppingApplication$1;
.super Ljava/lang/Object;
.source "ShoppingApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/ShoppingApplication;->init(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/ShoppingApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/ShoppingApplication;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/genie/shopping/ShoppingApplication$1;->this$0:Lcom/alibaba/genie/shopping/ShoppingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "return launcher,kill me, s="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "shopping"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "desktop"

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
