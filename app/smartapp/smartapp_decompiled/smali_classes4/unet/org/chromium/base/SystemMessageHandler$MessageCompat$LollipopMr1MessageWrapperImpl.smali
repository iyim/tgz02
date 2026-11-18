.class Lunet/org/chromium/base/SystemMessageHandler$MessageCompat$LollipopMr1MessageWrapperImpl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lunet/org/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/SystemMessageHandler$MessageCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopMr1MessageWrapperImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    return-void
.end method
