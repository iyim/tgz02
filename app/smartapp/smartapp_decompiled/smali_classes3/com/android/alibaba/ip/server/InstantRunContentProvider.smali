.class public final Lcom/android/alibaba/ip/server/InstantRunContentProvider;
.super Lcom/android/alibaba/ip/server/PreferencesProvider;
.source "InstantRunContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/alibaba/ip/server/PreferencesProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAuthorities()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantRunContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/alibaba/ip/server/InstantRunContentProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/android/alibaba/ip/server/PreferencesProvider;->onCreate()Z

    .line 14
    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantRunContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alibaba/ip/server/InstantPatcher;->create(Landroid/content/Context;)Lcom/android/alibaba/ip/server/InstantPatcher;

    const/4 v0, 0x1

    return v0
.end method
