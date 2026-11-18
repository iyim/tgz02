.class public Lcom/alibaba/ailabs/genie/utils/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field private static final PERMISSIONCODE:I = 0x64

.field private static final PERMISSIONS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/PermissionUtil;->PERMISSIONS:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static RequestPermission(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/PermissionUtil;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget v0, Lcom/alibaba/ailabs/genie/utils/R$string;->need_permission:I

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x64

    invoke-static {p0, v0, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/PermissionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAndroidM()Z
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/alibaba/ailabs/genie/utils/PermissionUtil;->mContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static showMessageOKCancel(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
