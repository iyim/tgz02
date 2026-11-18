.class Lcom/alibaba/ailabs/genie/config/MtopApi$2;
.super Ljava/lang/Object;
.source "MtopApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/config/MtopApi;->writeProperties(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/config/MtopApi;

.field final synthetic val$val:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/config/MtopApi;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/config/MtopApi$2;->this$0:Lcom/alibaba/ailabs/genie/config/MtopApi;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/config/MtopApi$2;->val$val:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/config/MtopApi$2;->val$val:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/config/MtopApi$2;->val$val:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "persist.demo"

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/config/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/config/MtopApi$2;->val$val:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/config/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
