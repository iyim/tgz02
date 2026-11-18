.class Lcom/taobao/phenix/builder/BytesPoolBuilder$1;
.super Ljava/lang/Object;
.source "BytesPoolBuilder.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/phenix/builder/BytesPoolBuilder;->registerComponentCallbacks(Lcom/taobao/tcommon/core/BytesPool;)Lcom/taobao/tcommon/core/BytesPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/phenix/builder/BytesPoolBuilder;

.field final synthetic val$bytesPool:Lcom/taobao/tcommon/core/BytesPool;


# direct methods
.method constructor <init>(Lcom/taobao/phenix/builder/BytesPoolBuilder;Lcom/taobao/tcommon/core/BytesPool;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder$1;->this$0:Lcom/taobao/phenix/builder/BytesPoolBuilder;

    iput-object p2, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder$1;->val$bytesPool:Lcom/taobao/tcommon/core/BytesPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onLowMemory()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTrimMemory(I)V
    .locals 4

    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BytesPool"

    const-string v3, "ComponentCallbacks2 onTrimMemory, level=%d"

    invoke-static {v1, v3, v0}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 57
    iget-object p1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder$1;->val$bytesPool:Lcom/taobao/tcommon/core/BytesPool;

    invoke-interface {p1}, Lcom/taobao/tcommon/core/BytesPool;->clear()V

    .line 58
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "clear all at TRIM_MEMORY_MODERATE"

    invoke-static {v1, v0, p1}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
