.class public Lcom/alibaba/ailabs/genie/logger/activity/PermissionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PermissionActivity.java"


# static fields
.field private static final REQUEST_CODE:I = 0x4cf

.field private static final TAG:Ljava/lang/String; = "PermissionActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "PermissionActivity"

    const-string v0, "onCreate"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget p1, Lcom/alibaba/ailabs/genie/logger/service/R$layout;->activity_permission:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/logger/activity/PermissionActivity;->setContentView(I)V

    .line 25
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_4

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/logger/activity/PermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 28
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/logger/activity/PermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/activity/PermissionActivity;->finish()V

    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4cf

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x4cf

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 46
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/activity/PermissionActivity;->finish()V

    :cond_1
    return-void
.end method
