.class final Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService$BackgroundUpdater;
.super Ljava/lang/Object;
.source "NativeViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackgroundUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService$1;)V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService$BackgroundUpdater;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public update(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 424
    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_0

    return-void

    .line 427
    :cond_0
    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 428
    new-instance p3, Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService$BackgroundUpdater$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService$BackgroundUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService$BackgroundUpdater;Landroid/view/View;I)V

    invoke-static {p3}, Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService;->access$1600(Ljava/lang/Runnable;)V

    return-void
.end method
