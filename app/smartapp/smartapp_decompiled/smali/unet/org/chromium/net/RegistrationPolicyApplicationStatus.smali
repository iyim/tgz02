.class public Lunet/org/chromium/net/RegistrationPolicyApplicationStatus;
.super Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
.source "ProGuard"

# interfaces
.implements Lunet/org/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lunet/org/chromium/net/RegistrationPolicyApplicationStatus;->a()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1771
    sget-boolean p1, Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->b:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->a:Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1772
    :cond_2
    :goto_0
    iget-object p1, p0, Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->a:Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {p1}, Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect;->c()V

    :cond_3
    return-void
.end method

.method protected final a(Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->a(Lunet/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 22
    invoke-static {p0}, Lunet/org/chromium/base/ApplicationStatus;->a(Lunet/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 1048
    invoke-static {}, Lunet/org/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lunet/org/chromium/net/RegistrationPolicyApplicationStatus;->a(I)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lunet/org/chromium/net/RegistrationPolicyApplicationStatus;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {p0}, Lunet/org/chromium/base/ApplicationStatus;->b(Lunet/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lunet/org/chromium/net/RegistrationPolicyApplicationStatus;->c:Z

    return-void
.end method
