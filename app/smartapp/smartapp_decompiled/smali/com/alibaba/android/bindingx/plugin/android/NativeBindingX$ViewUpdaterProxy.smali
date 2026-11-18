.class Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewUpdaterProxy;
.super Ljava/lang/Object;
.source "NativeBindingX.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewUpdaterProxy"
.end annotation


# instance fields
.field private mNativeViewUpdater:Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewUpdaterProxy;->mNativeViewUpdater:Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;

    return-void
.end method


# virtual methods
.method public varargs synchronouslyUpdateViewOnUIThread(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
    .locals 6
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
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewUpdaterProxy;->mNativeViewUpdater:Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 297
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;->update(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
