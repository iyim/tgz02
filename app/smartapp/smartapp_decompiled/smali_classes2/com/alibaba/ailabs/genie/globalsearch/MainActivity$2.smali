.class Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->lambda$getHotList$24(Lcom/alibaba/ailabs/genie/globalsearch/response/FrontPageInfoResponse;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

.field final synthetic val$hotListBean:Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;->val$hotListBean:Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;->val$hotListBean:Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hotList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
