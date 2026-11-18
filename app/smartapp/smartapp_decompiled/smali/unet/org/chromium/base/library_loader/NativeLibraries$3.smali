.class final Lunet/org/chromium/base/library_loader/NativeLibraries$3;
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

    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "unet_arm64-v8a"

    const-string v1, "73a7e7e276d526b5227d77242d16b2f0221beb63"

    invoke-virtual {p0, v0, v1}, Lunet/org/chromium/base/library_loader/NativeLibraries$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "unet"

    const-string v1, "f404229dcd5f80239fbe4e3877251f82a9bd6c12"

    invoke-virtual {p0, v0, v1}, Lunet/org/chromium/base/library_loader/NativeLibraries$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
