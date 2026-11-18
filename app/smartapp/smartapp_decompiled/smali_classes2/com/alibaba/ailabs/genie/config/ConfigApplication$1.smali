.class Lcom/alibaba/ailabs/genie/config/ConfigApplication$1;
.super Ljava/lang/Object;
.source "ConfigApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/config/ConfigApplication;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/config/ConfigApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/config/ConfigApplication;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/config/ConfigApplication$1;->this$0:Lcom/alibaba/ailabs/genie/config/ConfigApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/config/ConfigApplication$1;->this$0:Lcom/alibaba/ailabs/genie/config/ConfigApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->access$000(Lcom/alibaba/ailabs/genie/config/ConfigApplication;)V

    return-void
.end method
