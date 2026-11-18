.class Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;
.super Ljava/lang/Object;
.source "UMConfigHelper.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

.field final synthetic val$groupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;->this$0:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    iput-object p2, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;->val$groupName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;->this$0:Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;

    iget-object p2, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;->val$groupName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->access$000(Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;Ljava/lang/String;)V

    return-void
.end method
