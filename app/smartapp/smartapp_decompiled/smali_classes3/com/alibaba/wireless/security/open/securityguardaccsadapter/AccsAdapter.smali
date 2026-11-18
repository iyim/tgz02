.class public Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsAdapter;
.super Ljava/lang/Object;
.source "AccsAdapter.java"


# static fields
.field public static gContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerListner(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 17
    sput-object p0, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsAdapter;->gContext:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;

    invoke-direct {v0}, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;-><init>()V

    .line 19
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p0

    const-string v1, "securityguard_accs_service"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/accs/client/GlobalClientInfo;->registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    :cond_0
    return-void
.end method
