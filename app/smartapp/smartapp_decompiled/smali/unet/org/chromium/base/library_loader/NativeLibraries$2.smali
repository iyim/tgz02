.class final Lunet/org/chromium/base/library_loader/NativeLibraries$2;
.super Ljava/util/HashMap;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "unet_arm64-v8a"

    const-string v1, "070a429d62746cfb451b0f1cc97c27e6"

    invoke-virtual {p0, v0, v1}, Lunet/org/chromium/base/library_loader/NativeLibraries$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "unet"

    const-string v1, "aeda3a34381f222d2b71ef3ad9e496b8"

    invoke-virtual {p0, v0, v1}, Lunet/org/chromium/base/library_loader/NativeLibraries$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
