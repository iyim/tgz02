.class final Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;
.super Ljava/lang/Object;
.source "UTUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->manualExposureAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$arg2:Ljava/lang/String;

.field final synthetic val$arg3:Ljava/lang/String;

.field final synthetic val$p:Ljava/util/Map;

.field final synthetic val$pageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$pageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$arg1:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$arg2:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$arg3:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$p:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 168
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->access$000()Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$pageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$arg1:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$arg2:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$arg3:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;->val$p:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;->manualExposureAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
