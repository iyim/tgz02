.class public Landroid/taobao/windvane/jsbridge/WVJsbridgeService;
.super Ljava/lang/Object;
.source "WVJsbridgeService.java"


# static fields
.field private static mAyncPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck;",
            ">;"
        }
    .end annotation
.end field

.field private static mPagePreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/WVJSAPIAuthCheck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPreprocessor:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mAyncPreprocessor:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPagePreprocessors:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getJSBridgePreprocessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/WVJSAPIAuthCheck;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPreprocessor:Ljava/util/List;

    return-object v0
.end method

.method public static getJSBridgeayncPreprocessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mAyncPreprocessor:Ljava/util/List;

    return-object v0
.end method

.method public static getPagePreprocessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPagePreprocessors:Ljava/util/List;

    return-object v0
.end method

.method public static registerJsBridgePagePreprocessors(Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;)V
    .locals 1

    .line 56
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPagePreprocessors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerJsbridgePreprocessor(Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck;)V
    .locals 1

    .line 40
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mAyncPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerJsbridgePreprocessor(Landroid/taobao/windvane/jsbridge/WVJSAPIAuthCheck;)V
    .locals 1

    .line 52
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterPagePreprocessors(Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;)V
    .locals 1

    .line 64
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPagePreprocessors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterPreprocessor(Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck;)V
    .locals 1

    .line 32
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mAyncPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterPreprocessor(Landroid/taobao/windvane/jsbridge/WVJSAPIAuthCheck;)V
    .locals 1

    .line 44
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
