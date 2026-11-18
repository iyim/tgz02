.class Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$1;
.super Ljava/lang/Object;
.source "BirdNestSDKService.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createLogTracer()Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$1;->this$0:Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trace(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method
