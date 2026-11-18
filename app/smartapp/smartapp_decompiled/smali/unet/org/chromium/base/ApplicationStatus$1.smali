.class final Lunet/org/chromium/base/ApplicationStatus$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lunet/org/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 127
    invoke-static {}, Lunet/org/chromium/base/ApplicationStatus;->b()Landroid/app/Activity;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p1}, Lunet/org/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 132
    invoke-static {p1}, Lunet/org/chromium/base/ApplicationStatus;->b(Landroid/app/Activity;)Landroid/app/Activity;

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
