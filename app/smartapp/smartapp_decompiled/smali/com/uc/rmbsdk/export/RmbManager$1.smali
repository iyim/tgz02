.class Lcom/uc/rmbsdk/export/RmbManager$1;
.super Ljava/lang/Object;
.source "RmbManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/rmbsdk/export/RmbManager;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbManager$1;->this$0:Lcom/uc/rmbsdk/export/RmbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager$1;->this$0:Lcom/uc/rmbsdk/export/RmbManager;

    invoke-static {v0}, Lcom/alibaba/mbg/upaas/UpaasManager;->setRmbMessageCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V

    .line 62
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager$1;->this$0:Lcom/uc/rmbsdk/export/RmbManager;

    invoke-static {v0}, Lcom/alibaba/mbg/upaas/UpaasManager;->setCallback(Lcom/alibaba/mbg/upaas/UpaasManager$Callback;)V

    return-void
.end method
